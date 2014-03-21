## Rock Paper Scissors

This is a programming exercise for use when pairing with developer applicants,
borrowed from [Ruby Quiz][rbq].

  [rbq]: http://www.rubyquiz.com/quiz16.html

### Setup

To run, add two or more subclasses of `Player` to the `players` directory (or
simply check out the `default-players` branch) and run `rake`.

I've been having candidates create their own basic players (`RockPlayer`,
`PaperPlayer`, `RandomPlayer`), and then having them suggest and implement more
complicated options.

### Synopsis

Your task is to build a strategy for playing the game of Paper Rock Scissors
against all manner of opponents. The question here is if you can adapt to an
opponent's strategy and seize the advantage, while he is doing the same to you
of course.

If you're not familiar with this childhood game, it's very simple. Both players
choose one of three items at the same time: Paper, a Rock, or Scissors. A
"winner" is chosen by the following rules:

    Paper covers a Rock.      (Paper beats a Rock.)
    Scissors cut Paper.       (Scissors beat Paper.)
    A Rock smashes Scissors.  (A Rock beats Scissors.)
    Anything else is a "draw".

Defining a player for straight forward. I'm providing a class you can just
inherit from:

    class YourPlayer < Player
      def initialize( opponent )
        # optional
        #
        # called at the start of a match verses opponent
        # opponent = String of opponent's class name
        #
        # Player's constructor sets @opponent
      end

      def choose
        # required
        #
        # return your choice of :paper, :rock or :scissors
      end

      def result( you, them, win_lose_or_draw )
        # optional
        #
        # called after each choice you make to give feedback
        # you              = your choice
        # them             = opponent's choice
        # win_lose_or_draw = :win, :lose or :draw, your result
      end
    end

We'll need some rules for defining players, to make it easy for all our
strategies to play against each other:

* Player subclasses reside in the `players` directory
* One file per player (e.g. players/rock_player.rb -> RockPlayer)

### Pairing

Set up a shared server with some basic dependencies:

    apt-get install -y ruby2.0 git vim screen
    sudo gem install rake

Create a user account to share (e.g. `pairing`) and set up a screen session:

    screen -S rps

Have the other person SSH as the same user and connect to your running screen
session:

    screen -x

The other person's screen will update when you make changes and vice versa. To
quickly get the results of the game, you can just type `:!rake` from within vim.


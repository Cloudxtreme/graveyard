#      .   .             <CKS Juggernaut>
#     .:...::     Command Name // !sign
#    .::   ::.     Description // Sign the bot's guestbook!
# ..:;;. ' .;;:..        Usage // !sign <message>
#    .  '''  .     Permissions // Public
#     :;,:,;:         Listener // All Listeners
#     :     :        Copyright // 2004 Chaos AI Technology

sub sign {
	my ($self,$client,$msg,$listener) = @_;

	# Make sure they have a message.
	if ($msg) {
		# Make sure this isn't a curse.
		my $curse = curses ($msg);

		if ($curse == 0) {
			# Save this.
			my $time = localtime();
			open (GUESTBOOK, ">>./data/gb.txt");
			print GUESTBOOK "$client][$time][$msg\n";
			close (GUESTBOOK);

			$reply = "Thank you for signing my guestbook!";
		}
		else {
			$reply = "I will not record vulgar messages in my guestbook.";
		}
	}
	else {
		$reply = "To sign the guestbook, type !sign [message]";
	}

	return $reply;
}

{
	Category => 'General',
	Description => 'Sign the Guestbook',
	Usage => '!sign <msg>',
	Listener => 'All',
};
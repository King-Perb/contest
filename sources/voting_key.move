 friend 0xa17b9cc3777aa7d4ffd64206b5b5ff9c14a5170c587ca214ec94c8427f4002e1::contest;


module 0xa17b9cc3777aa7d4ffd64206b5b5ff9c14a5170c587ca214ec94c8427f4002e1::voting_key {
    struct VotingKey has copy, drop, store {
        nft_id: 0x2::object::ID,
        voter_addr: address,
    }
    
    public(friend) fun create_voting_key(arg0: 0x2::object::ID, arg1: address) : VotingKey {
        VotingKey{
            nft_id     : arg0, 
            voter_addr : arg1,
        }
    }
    
    // decompiled from Move bytecode v6
}


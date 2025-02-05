 friend 0xa17b9cc3777aa7d4ffd64206b5b5ff9c14a5170c587ca214ec94c8427f4002e1::contest;


module 0xa17b9cc3777aa7d4ffd64206b5b5ff9c14a5170c587ca214ec94c8427f4002e1::vote_proof {
    struct VoteProof has key {
        id: 0x2::object::UID,
        nft_id: 0x2::object::ID,
    }
    
    public(friend) fun create_vote_proof_and_transfer(arg0: 0x2::object::ID, arg1: &mut 0x2::tx_context::TxContext) {
        let v0 = VoteProof{
            id     : 0x2::object::new(arg1), 
            nft_id : arg0,
        };
        0x2::transfer::transfer<VoteProof>(v0, 0x2::tx_context::sender(arg1));
    }
    
    // decompiled from Move bytecode v6
}


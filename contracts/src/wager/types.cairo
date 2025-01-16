use starknet::ContractAddress;

#[derive(Drop, Serde, starknet::Store)]
pub struct Wager {
    pub wager_id: u64,
    pub category: Category,
    pub title: ByteArray,
    pub terms: ByteArray,
    pub creator: ByteArray,
    pub stake: u256,
    pub resolved: bool,
    pub winner: ContractAddress,
    pub mode: Mode,
}

#[derive(Drop, Copy, Serde, PartialEq, starknet::Store)]
pub enum Category {
    Sports,
    Politics,
    Entertainment,
}

#[derive(Drop, Copy, Serde, PartialEq, starknet::Store)]
pub enum Mode {
    HeadToHead,
    Group
}
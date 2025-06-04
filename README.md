# Hello Move

A simple Aptos Move project 

---
```
git clone https://github.com/DineshMN1/hello-move.git
```
---
## Project Structure

```
hello-move/
├── Move.toml
├── README.md
├── sources/
│   └── hello.move
└── .aptos/
    └── config.yaml
```

---

## Getting Started

### 1. Install the Aptos CLI

Follow the official guide:  
 [Aptos CLI Setup](https://aptos.dev/en/build/cli)

### 2. Initialize a Move Project

```bash
aptos move init --name hello-move
cd hello-move
```

### 3. Initialize Aptos CLI for Devnet

```bash
aptos init --network devnet
```

Choose defaults or create a new account. This generates a `.aptos/config.yaml` with your account address.

---

## Set Your Named Address

Copy your account address from `.aptos/config.yaml`, and update `Move.toml`:

```toml
[addresses]
addr = "0xYOUR_ACCOUNT_ADDRESS"
```

---

## Write Your Move Module

Create `sources/hello.move` and paste this:

```move
module addr::Hello {
    use std::string::{String, utf8};
    use std::debug;

    public fun hello(): String {
        let msg: String = utf8(b"Hello Move!");
        debug::print(&msg);
        msg
    }

    #[test]
    fun test_hello() {
        let result = hello();
        debug::print(&result);
    }
}
```

---

## Compile

```bash
aptos move compile
```

---

## Run Tests

```bash
aptos move test
```

You should see:

```
[debug] Hello Move!
```

---
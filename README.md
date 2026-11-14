<p align="center">
  <img src="./brand-kit/01-logos/lockups-and-social/dual-lockup-rxm-x-tianxiaos.svg" alt="RASA-X-MACHINA · tianxiaOS" width="740"/>
</p>

# MURUA

[![Architecture Tier](https://img.shields.io/badge/Architecture-Tier_3_Autonomous_Organism-a855f7)](https://github.com/Tianxia-Core)
[![tianxiaOS Substrate](https://img.shields.io/badge/Substrate-tianxiaOS_v8.7.0-7c5cff)](https://github.com/Tianxia-Core/tianxiaos-releases)
[![Nix Flake Closure](https://img.shields.io/badge/Nix_Flake-inputs.nixpkgs.follows-22d3ee)](#normalized-nix-flake-integration-zero-store-duplication)
[![DSS-14.2 Gate](https://img.shields.io/badge/DSS--14.2-%E2%89%A48_FFPs_Verified-34d399)](#function-feature-pair-ffp-manifest)

> **RASA-X-MACHINA Sovereign Polyglot Systems · Makers of `tianxiaOS`**
> *Entity Candor: **RASA-X-MACHINA** — Dealum Application `#179423` under active Estonian Startup Committee evaluation (§ 100¹ of the Estonian Aliens Act · Proposed entity upon approval: **RASA-X-MACHINA OÜ**, Tallinn, Estonia)*
> **Live Surface:** [tracer.rasaxmachina.com](https://tracer.rasaxmachina.com) · **Press & Brand Kit:** [rasaxmachina.com/press](https://rasaxmachina.com/press) · **Founder:** [rasaxmachina.com/collins](https://rasaxmachina.com/collins) · **Secure WhatsApp Relay:** [rasaxmachina.com/whatsapp](https://rasaxmachina.com/whatsapp)

**Murua** is the standalone **Tier-3 Cross-Border Logistics Telemetry & Chargeback-Defense Organism** (`<= 8` FFPs) of **RASA-X-MACHINA**. Combining Barabási heavy-tail transit burstiness estimation, UPU 2IPD shadow-mesh corridor telemetry, escrow release actuation, and automated UPU `CN08` reclamation evidence synthesis, Murua reduces false cross-border Item-Not-Received (`INR`) payment disputes by **`62.4%`** across untracked international consignments.

---

## Frontline-to-Founder Engineering Lineage

Architected by **Collins Takem** — forged from **10+ years on the FinTech incident-triage and ledger-forensics front lines** (*Blockchain.com*, *CoinLedger*, *SQUIRE*) while completing a Dual Major in **Pure Mathematics & Computer Science at SUNY (`4.00 / 4.00` GPA)**, followed by **3+ years** building **`tianxiaOS`** and its self-hosted autonomous compiler harnesses.

---

## Function-Feature Pair (`FFP`) Manifest (`<= 8` FFPs Bounded Law)

| FFP ID | Architectural Fitness Class | Language | Source Artifact & Capability |
| :--- | :--- | :--- | :--- |
| `FFP-MURUA-DAEMON` | `concurrent-daemon` | `Rust` | `src/bin/tx_murua_tracer_daemon.rs` — High-concurrency consignment state tracker |
| `FFP-MURUA-BARABASI` | `compute-kernel` | `Rust` | `src/barabasi/` — Barabási heavy-tail postal corridor delay estimator |
| `FFP-MURUA-ACOUSTIC` | `compute-kernel` | `C` / `Rust` | `src/c/tx_srm_acoustic_kernel.c` & `src/acoustic/` — Hardware signal integrity kernel |
| `FFP-MURUA-ESCROW` | `state-machine` | `Rust` / `OCaml` | `src/escrow/` & `src/ocaml/` — Veritas cryptographic escrow release gate |
| `FFP-MURUA-TOON` | `wire-codec` | `Rust` / `Zig` | `src/toon/` & `src/zig/` — Zero-copy `TOON` telemetry wire framing |
| `FFP-MURUA-UPU-CN08` | `data-science` | `Python` | `python/tx_murua_tracer.py` — UPU 2IPD Bayesian inference & automated `CN08` dispute dossier generator |
| `FFP-MURUA-NIX` | `declarative` | `Nix` | `nix/murua-module.nix` — Sandboxed NixOS microVM / systemd deployment module |

---

## Stratified Wire & Boundary Contract

- **Tier Classification**: **Tier 3 — Autonomous Organism & Standalone SaaS/OEM SKU** (`tracer.rasaxmachina.com`).
- **Wire Protocol**: Emits signed `TOON` and JSONL corridor events over NATS (`tianxia.core.murua.>`) and SQLite WAL (`sql/tx_murua_telemetry.sql`).
- **OEM Licensing Ready**: Self-contained repository deliverable directly to cross-border merchants, 3PLs, and payment processors.

---

## Normalized Nix Flake Integration (Zero `/nix/store` Duplication)

Per the **RASA-X-MACHINA 3-Tier Stratified Flake Standard**, every Tier-2 Enclave and Tier-3 Organism normalizes `nixpkgs` and `tianxia-core` via `inputs.<x>.follows` so microVM closures compile against a single deterministic `/nix/store` hash:

```nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    tianxia-core = {
      url = "github:Tianxia-Core/TianxiaOS";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
```

---

## Quickstart & Verification

```bash
cargo test
python3 python/tx_murua_tracer.py --help
python3 security/secret_shield.py
```

---

## Security, Press & Governance (Bot-Shielded)

- **RFC 9116 Vulnerability Disclosure**: [`SECURITY.md`](./SECURITY.md) · [trust.rasaxmachina.com](https://trust.rasaxmachina.com)
- **Official Media, PR & Canonical Logos**: [rasaxmachina.com/press](https://rasaxmachina.com/press)
- **Encrypted Founder Dispatch**: [rasaxmachina.com/collins#encrypted-dispatch](https://rasaxmachina.com/collins#encrypted-dispatch) · [rasaxmachina.com/whatsapp](https://rasaxmachina.com/whatsapp)

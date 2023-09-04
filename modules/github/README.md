# GitHub Module

This module manages GitHub repositories.

## Requirements

| Name      | Version   |
|-----------|-----------|
| terraform | >= 0.13.0 |
| github    | >= 5.0    |

## Providers

| Name   | Version   |
|--------|-----------|
| github | >= 5.0    |

## Inputs

| Name         | Description                    | Type | Default | Required |
|--------------|--------------------------------|------|---------|:--------:|
| repositories | Map of repositories to manage. | `any`| `{}`    | yes      |

You can see the details of the resource, including the private key by running the `terraform show` command.

```shell
tls_private_key.pvtkey:
resource "tls_private_key" "pvtkey" {
    algorithm                  = "RSA"
    ecdsa_curve                = "P224"
    id                         = "4da48d4cc57db0ad340a5f624ce9cab1e7ef404d"
    private_key_pem            = (sensitive value)
    public_key_fingerprint_md5 = "fc:d9:5f:e4:fa:05:f3:d8:aa:36:3f:4e:03:41:45:79"
    public_key_openssh         = <<~EOT
        ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCvt2bEEcp55vMjP7DL/aly2aRpOa/YYnmBrb8caFA9ntBi+wP9CmMba5eSHKC+Q8oEuAjGsxH3tG0SM0zsGWLQKkmP2AJaZY45r4tfsV/2wY8CmxKZFSkQrjroeFPcvR4EJjlOqUwBYYsz+SwCCdgeKZcyM4UmM1R/PoMlvjTDS50asS/ml0ZTq1IE6llNhX6I6G4VqU6Be8PRBYaRWcZgRBoePSiZaPinI/f7In3w5oresvcPrYKZk3XvYa9xNjslZ/V+AGQYgXPki/BqbTNP/Z7Y3Xx1JQ0gkQ2tUd5sf2q2G4WXlhztURnv0XJc9/WljAuzVNVDwakTVKTV+DKzogQ6joYz9L1PmOCOdaDo7lXo2oJtfoGNuG7tGtNn4mKm2t9lfiyjZEu0tG1AmevGjwDJ5wMK54D/KuFxZPkJymNOZa5vGCGefyBueh3++TNpsNfSCBNSWZ9J7A+6HWOthekzAR2uFpRH/JmL7rFUvg61est5BZQZC15q3EWPzwCVZAnoZSpwSJX0by2OhH4mFWudcTnCCihAkgY3+dH1yEcDYwIHFQyld7TLf0I7L6ziCjMmuai3OjV2Iy7X4WxREf8ldtemseyH5hKw+ie3iPnbHO2bN9eRyTAuohqfu5kufguqr4wLRVd9imcB8Cja0qhZxjLMVFQhHJnG0aUa4w==
    EOT
    public_key_pem             = <<~EOT
        -----BEGIN PUBLIC KEY-----
        MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAr7dmxBHKeebzIz+wy/2p
        ctmkaTmv2GJ5ga2/HGhQPZ7QYvsD/QpjG2uXkhygvkPKBLgIxrMR97RtEjNM7Bli
        0CpJj9gCWmWOOa+LX7Ff9sGPApsSmRUpEK466HhT3L0eBCY5TqlMAWGLM/ksAgnY
        HimXMjOFJjNUfz6DJb40w0udGrEv5pdGU6tSBOpZTYV+iOhuFalOgXvD0QWGkVnG
        YEQaHj0omWj4pyP3+yJ98OaK3rL3D62CmZN172GvcTY7JWf1fgBkGIFz5Ivwam0z
        T/2e2N18dSUNIJENrVHebH9qthuFl5Yc7VEZ79FyXPf1pYwLs1TVQ8GpE1Sk1fgy
        s6IEOo6GM/S9T5jgjnWg6O5V6NqCbX6Bjbhu7RrTZ+JiptrfZX4so2RLtLRtQJnr
        xo8AyecDCueA/yrhcWT5CcpjTmWubxghnn8gbnod/vkzabDX0ggTUlmfSewPuh1j
        rYXpMwEdrhaUR/yZi+6xVL4OtXrLeQWUGQteatxFj88AlWQJ6GUqcEiV9G8tjoR+
        JhVrnXE5wgooQJIGN/nR9chHA2MCBxUMpXe0y39COy+s4gozJrmotzo1diMu1+Fs
        URH/JXbXprHsh+YSsPont4j52xztmzfXkckwLqIan7uZLn4Lqq+MC0VXfYpnAfAo
        2tKoWcYyzFRUIRyZxtGlGuMCAwEAAQ==
        -----END PUBLIC KEY-----
    EOT
    rsa_bits                   = 4096
}
```
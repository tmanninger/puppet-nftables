# manage out nfs3
class nftables::rules::out::nfs3 {
  nftables::rule {
    'default_out-nfs3':
      content => 'meta l4proto { tcp, udp } @th,16,16 2049 accept comment "Accept NFS3"',
  }
}

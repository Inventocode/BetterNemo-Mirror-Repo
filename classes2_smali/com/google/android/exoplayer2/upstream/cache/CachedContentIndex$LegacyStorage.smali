.class Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;
.super Ljava/lang/Object;
.source "CachedContentIndex.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$Storage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyStorage"
.end annotation


# static fields
.field private static final FLAG_ENCRYPTED_INDEX:I = 0x1

.field private static final VERSION:I = 0x2

.field private static final VERSION_METADATA_INTRODUCED:I = 0x2


# instance fields
.field private final atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

.field private bufferedOutputStream:Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;

.field private changed:Z

.field private final cipher:Ljavax/crypto/Cipher;

.field private final encrypt:Z

.field private final random:Ljava/security/SecureRandom;

.field private final secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method public constructor <init>(Ljava/io/File;[BZ)V
    .registers 9

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_c

    if-nez p3, :cond_a

    goto :goto_c

    :cond_a
    const/4 v2, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v2, 0x1

    .line 520
    :goto_d
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const/4 v2, 0x0

    if-eqz p2, :cond_31

    .line 524
    array-length v3, p2

    const/16 v4, 0x10

    if-ne v3, v4, :cond_19

    const/4 v0, 0x1

    :cond_19
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 526
    :try_start_1c
    invoke-static {}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->access$000()Ljavax/crypto/Cipher;

    move-result-object v0

    .line 527
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1c .. :try_end_27} :catch_2a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1c .. :try_end_27} :catch_28

    goto :goto_38

    :catch_28
    move-exception p1

    goto :goto_2b

    :catch_2a
    move-exception p1

    .line 529
    :goto_2b
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_31
    xor-int/lit8 p2, p3, 0x1

    .line 532
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    move-object v0, v2

    move-object v1, v0

    .line 534
    :goto_38
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->encrypt:Z

    .line 535
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    .line 536
    iput-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    if-eqz p3, :cond_45

    .line 537
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    :cond_45
    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->random:Ljava/security/SecureRandom;

    .line 538
    new-instance p2, Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    return-void
.end method

.method private hashCachedContent(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;I)I
    .registers 6

    .line 699
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    mul-int/lit8 v0, v0, 0x1f

    .line 700
    iget-object v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    if-ge p2, v1, :cond_20

    .line 702
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getMetadata()Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata$-CC;->getContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadata;)J

    move-result-wide p1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    xor-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    goto :goto_2b

    :cond_20
    mul-int/lit8 v0, v0, 0x1f

    .line 705
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getMetadata()Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :goto_2b
    return v0
.end method

.method private readCachedContent(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 719
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ge p1, v2, :cond_1e

    .line 722
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    .line 723
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;-><init>()V

    .line 724
    invoke-static {v2, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;->setContentLength(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;J)Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;

    .line 725
    sget-object p1, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->EMPTY:Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;->copyWithMutationsApplied(Lcom/google/android/exoplayer2/upstream/cache/ContentMetadataMutations;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object p1

    goto :goto_22

    .line 727
    :cond_1e
    invoke-static {p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->access$100(Ljava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object p1

    .line 729
    :goto_22
    new-instance p2, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    invoke-direct {p2, v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;-><init>(ILjava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;)V

    return-object p2
.end method

.method private readFile(Ljava/util/HashMap;Landroid/util/SparseArray;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/AtomicFile;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 599
    :try_start_c
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/AtomicFile;->openRead()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 600
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1c} :catch_b7
    .catchall {:try_start_c .. :try_end_1c} :catchall_b0

    .line 601
    :try_start_1c
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_a7

    const/4 v5, 0x2

    if-le v0, v5, :cond_27

    goto/16 :goto_a7

    .line 606
    :cond_27
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    and-int/2addr v6, v1

    if-eqz v6, :cond_66

    .line 608
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_30} :catch_ae
    .catchall {:try_start_1c .. :try_end_30} :catchall_ab

    if-nez v6, :cond_36

    .line 641
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return v2

    :cond_36
    const/16 v6, 0x10

    :try_start_38
    new-array v6, v6, [B

    .line 612
    invoke-virtual {v4, v6}, Ljava/io/DataInputStream;->readFully([B)V

    .line 613
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_42} :catch_ae
    .catchall {:try_start_38 .. :try_end_42} :catchall_ab

    .line 615
    :try_start_42
    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/Key;

    invoke-virtual {v6, v5, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_4f
    .catch Ljava/security/InvalidKeyException; {:try_start_42 .. :try_end_4f} :catch_5f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_42 .. :try_end_4f} :catch_5d
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4f} :catch_ae
    .catchall {:try_start_42 .. :try_end_4f} :catchall_ab

    .line 619
    :try_start_4f
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v6, Ljavax/crypto/CipherInputStream;

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v6, v3, v7}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    goto :goto_6c

    :catch_5d
    move-exception p1

    goto :goto_60

    :catch_5f
    move-exception p1

    .line 617
    :goto_60
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 620
    :cond_66
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->encrypt:Z

    if-eqz v3, :cond_6c

    .line 621
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->changed:Z

    .line 624
    :cond_6c
    :goto_6c
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_72
    if-ge v5, v3, :cond_8c

    .line 627
    invoke-direct {p0, v0, v4}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->readCachedContent(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    move-result-object v7

    .line 628
    iget-object v8, v7, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget v8, v7, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    iget-object v9, v7, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 630
    invoke-direct {p0, v7, v0}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->hashCachedContent(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_72

    .line 632
    :cond_8c
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    .line 633
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result p2
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_94} :catch_ae
    .catchall {:try_start_4f .. :try_end_94} :catchall_ab

    const/4 v0, -0x1

    if-ne p2, v0, :cond_99

    const/4 p2, 0x1

    goto :goto_9a

    :cond_99
    const/4 p2, 0x0

    :goto_9a
    if-ne p1, v6, :cond_a3

    if-nez p2, :cond_9f

    goto :goto_a3

    .line 641
    :cond_9f
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :cond_a3
    :goto_a3
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return v2

    :cond_a7
    :goto_a7
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return v2

    :catchall_ab
    move-exception p1

    move-object v0, v4

    goto :goto_b1

    :catch_ae
    move-object v0, v4

    goto :goto_b8

    :catchall_b0
    move-exception p1

    :goto_b1
    if-eqz v0, :cond_b6

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 643
    :cond_b6
    throw p1

    :catch_b7
    nop

    :goto_b8
    if-eqz v0, :cond_bd

    .line 641
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_bd
    return v2
.end method

.method private writeCachedContent(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;Ljava/io/DataOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 740
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->id:I

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 741
    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;->getMetadata()Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex;->access$200(Lcom/google/android/exoplayer2/upstream/cache/DefaultContentMetadata;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method private writeFile(Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 650
    :try_start_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/AtomicFile;->startWrite()Ljava/io/OutputStream;

    move-result-object v1

    .line 651
    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->bufferedOutputStream:Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;

    if-nez v2, :cond_13

    .line 652
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->bufferedOutputStream:Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;

    goto :goto_16

    .line 654
    :cond_13
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;->reset(Ljava/io/OutputStream;)V

    .line 656
    :goto_16
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->bufferedOutputStream:Lcom/google/android/exoplayer2/upstream/cache/ReusableBufferedOutputStream;

    .line 657
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_a8

    const/4 v3, 0x2

    .line 658
    :try_start_1e
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 660
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->encrypt:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    goto :goto_2a

    :cond_29
    const/4 v4, 0x0

    .line 661
    :goto_2a
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 663
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->encrypt:Z

    if-eqz v4, :cond_75

    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 665
    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->random:Ljava/security/SecureRandom;

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/SecureRandom;

    invoke-virtual {v7, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 666
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 667
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V
    :try_end_48
    .catchall {:try_start_1e .. :try_end_48} :catchall_a5

    .line 669
    :try_start_48
    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Cipher;

    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->secretKeySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 670
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/Key;

    invoke-virtual {v4, v5, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_5b
    .catch Ljava/security/InvalidKeyException; {:try_start_48 .. :try_end_5b} :catch_6e
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_48 .. :try_end_5b} :catch_6c
    .catchall {:try_start_48 .. :try_end_5b} :catchall_a5

    .line 674
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 675
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v5, Ljavax/crypto/CipherOutputStream;

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v5, v1, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    goto :goto_75

    :catch_6c
    move-exception p1

    goto :goto_6f

    :catch_6e
    move-exception p1

    .line 672
    :goto_6f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 678
    :cond_75
    :goto_75
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 680
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_84
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/CachedContent;

    .line 681
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->writeCachedContent(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;Ljava/io/DataOutputStream;)V

    .line 682
    invoke-direct {p0, v1, v3}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->hashCachedContent(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;I)I

    move-result v1

    add-int/2addr v6, v1

    goto :goto_84

    .line 684
    :cond_99
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 685
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/AtomicFile;->endWrite(Ljava/io/OutputStream;)V
    :try_end_a1
    .catchall {:try_start_5b .. :try_end_a1} :catchall_a5

    .line 690
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_a5
    move-exception p1

    move-object v0, v2

    goto :goto_a9

    :catchall_a8
    move-exception p1

    :goto_a9
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 691
    throw p1
.end method


# virtual methods
.method public delete()V
    .registers 2

    .line 553
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/AtomicFile;->delete()V

    return-void
.end method

.method public exists()Z
    .registers 2

    .line 548
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/AtomicFile;->exists()Z

    move-result v0

    return v0
.end method

.method public initialize(J)V
    .registers 3

    return-void
.end method

.method public load(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 559
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->changed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 560
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->readFile(Ljava/util/HashMap;Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 561
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 562
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 563
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->atomicFile:Lcom/google/android/exoplayer2/util/AtomicFile;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/AtomicFile;->delete()V

    :cond_18
    return-void
.end method

.method public onRemove(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;Z)V
    .registers 3

    const/4 p1, 0x1

    .line 588
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->changed:Z

    return-void
.end method

.method public onUpdate(Lcom/google/android/exoplayer2/upstream/cache/CachedContent;)V
    .registers 2

    const/4 p1, 0x1

    .line 583
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->changed:Z

    return-void
.end method

.method public storeFully(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->writeFile(Ljava/util/HashMap;)V

    const/4 p1, 0x0

    .line 570
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->changed:Z

    return-void
.end method

.method public storeIncremental(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/CachedContent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->changed:Z

    if-nez v0, :cond_5

    return-void

    .line 578
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CachedContentIndex$LegacyStorage;->storeFully(Ljava/util/HashMap;)V

    return-void
.end method

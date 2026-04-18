.class public final Lcom/qiniu/android/utils/Crc32;
.super Ljava/lang/Object;
.source "Crc32.java"


# direct methods
.method public static bytes([B)J
    .registers 3

    .line 34
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/qiniu/android/utils/Crc32;->bytes([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static bytes([BII)J
    .registers 4

    .line 22
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 23
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 24
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide p0

    return-wide p0
.end method

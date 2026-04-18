.class public Lcn/com/chinatelecom/account/api/a/d;
.super Ljava/lang/Object;


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    sput-object v0, Lcn/com/chinatelecom/account/api/a/d;->a:[B

    return-void

    :array_e
    .array-data 1
        0x44t
        0x40t
        0x5et
        0x31t
        0x32t
        0x53t
    .end array-data
.end method

.method public static a([B)Ljava/lang/String;
    .registers 10

    :try_start_0
    array-length v0, p0

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_1f

    aget-byte v4, p0, v3

    aput-byte v4, v1, v3

    sget-object v4, Lcn/com/chinatelecom/account/api/a/d;->a:[B

    array-length v5, v4

    const/4 v6, 0x0

    :goto_f
    if-ge v6, v5, :cond_1c

    aget-byte v7, v4, v6

    aget-byte v8, v1, v3

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_1f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    return-object p0

    :catchall_25
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

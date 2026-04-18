.class public Lcom/tencent/smtt/utils/Base64;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/utils/Base64$b;,
        Lcom/tencent/smtt/utils/Base64$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BI)[B
    .registers 4

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/tencent/smtt/utils/Base64;->a([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static a([BIII)[B
    .registers 9

    new-instance v0, Lcom/tencent/smtt/utils/Base64$b;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/tencent/smtt/utils/Base64$b;-><init>(I[B)V

    div-int/lit8 p3, p2, 0x3

    mul-int/lit8 p3, p3, 0x4

    iget-boolean v1, v0, Lcom/tencent/smtt/utils/Base64$b;->d:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_23

    add-int/lit8 p3, p3, 0x4

    goto :goto_23

    :cond_17
    rem-int/lit8 v1, p2, 0x3

    if-eq v1, v3, :cond_21

    if-eq v1, v2, :cond_1e

    goto :goto_23

    :cond_1e
    add-int/lit8 p3, p3, 0x3

    goto :goto_23

    :cond_21
    add-int/lit8 p3, p3, 0x2

    :cond_23
    :goto_23
    iget-boolean v1, v0, Lcom/tencent/smtt/utils/Base64$b;->e:Z

    if-eqz v1, :cond_37

    if-lez p2, :cond_37

    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/2addr v1, v3

    iget-boolean v4, v0, Lcom/tencent/smtt/utils/Base64$b;->f:Z

    if-eqz v4, :cond_33

    goto :goto_34

    :cond_33
    const/4 v2, 0x1

    :goto_34
    mul-int v1, v1, v2

    add-int/2addr p3, v1

    :cond_37
    new-array v1, p3, [B

    iput-object v1, v0, Lcom/tencent/smtt/utils/Base64$a;->a:[B

    invoke-virtual {v0, p0, p1, p2, v3}, Lcom/tencent/smtt/utils/Base64$b;->a([BIIZ)Z

    sget-boolean p0, Lcom/tencent/smtt/utils/Base64;->a:Z

    if-nez p0, :cond_4d

    iget p0, v0, Lcom/tencent/smtt/utils/Base64$a;->b:I

    if-ne p0, p3, :cond_47

    goto :goto_4d

    :cond_47
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4d
    :goto_4d
    iget-object p0, v0, Lcom/tencent/smtt/utils/Base64$a;->a:[B

    return-object p0
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/Base64;->a([BI)[B

    move-result-object p0

    const-string p1, "US-ASCII"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.class public final Lcom/efs/sdk/base/a/g/a/c;
.super Lcom/efs/sdk/base/a/g/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/a/a;-><init>()V

    return-void
.end method

.method private static c(Lcom/efs/sdk/base/a/f/b;)Z
    .registers 4

    .line 53
    invoke-virtual {p0}, Lcom/efs/sdk/base/a/f/b;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    .line 2140
    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-byte v2, v0, Lcom/efs/sdk/base/a/f/a;->b:B

    if-ne v1, v2, :cond_13

    .line 2215
    iget-object p0, p0, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean p0, p0, Lcom/efs/sdk/base/a/f/c;->a:Z

    if-eqz p0, :cond_1a

    .line 3148
    :cond_13
    iget p0, v0, Lcom/efs/sdk/base/a/f/a;->c:I

    if-ne v1, p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    return p0

    :cond_1a
    :goto_1a
    return v1
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .registers 5

    .line 25
    invoke-static {p1}, Lcom/efs/sdk/base/a/g/a/c;->c(Lcom/efs/sdk/base/a/f/b;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/a;->b(Lcom/efs/sdk/base/a/f/b;)V

    return-void

    .line 1174
    :cond_a
    iget-object v0, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 31
    invoke-static {v0}, Lcom/efs/sdk/base/a/h/c;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    const-string v1, "efs.base"

    const-string v2, "gzip error"

    .line 2025
    invoke-static {v1, v2, v0}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/a;->b(Lcom/efs/sdk/base/a/f/b;)V

    return-void

    .line 41
    :cond_1e
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/a/f/b;->a([B)V

    const-string v0, "gzip"

    .line 43
    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/a/f/b;->a(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/a;->b(Lcom/efs/sdk/base/a/f/b;)V

    return-void
.end method

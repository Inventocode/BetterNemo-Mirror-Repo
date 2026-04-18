.class public final Lcom/efs/sdk/base/a/g/a/b;
.super Lcom/efs/sdk/base/a/g/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .registers 6

    .line 1215
    iget-object v0, p1, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v0, v0, Lcom/efs/sdk/base/a/f/c;->a:Z

    if-eqz v0, :cond_a

    .line 20
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/a;->b(Lcom/efs/sdk/base/a/f/b;)V

    return-void

    .line 2075
    :cond_a
    invoke-static {}, Lcom/efs/sdk/base/a/b/a$b;->a()Lcom/efs/sdk/base/a/b/a;

    move-result-object v0

    .line 2164
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v1, v1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    const-string v2, "wa"

    .line 2084
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-static {}, Lcom/efs/sdk/base/a/b/c;->a()Lcom/efs/sdk/base/a/b/c;

    move-result-object v1

    .line 3072
    iget-boolean v1, v1, Lcom/efs/sdk/base/a/b/c;->a:Z

    if-nez v1, :cond_4d

    .line 2086
    iget-boolean p1, v0, Lcom/efs/sdk/base/a/b/a;->a:Z

    if-nez p1, :cond_49

    .line 4053
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object p1

    .line 2087
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v1

    .line 4155
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 5103
    iget v1, v1, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 5195
    iget-object v2, p1, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    if-nez v2, :cond_3e

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v2

    .line 6186
    iget-boolean v2, v2, Lcom/efs/sdk/base/a/c/a;->d:Z

    if-eqz v2, :cond_49

    .line 5196
    :cond_3e
    iget-object v2, p1, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    const-string v3, "disk_limit"

    invoke-virtual {p1, v3, v1}, Lcom/efs/sdk/base/a/i/f;->a(Ljava/lang/String;I)Lcom/efs/sdk/base/a/i/b;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/efs/sdk/base/a/d/a;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    :cond_49
    const/4 p1, 0x1

    .line 2089
    iput-boolean p1, v0, Lcom/efs/sdk/base/a/b/a;->a:Z

    return-void

    .line 7148
    :cond_4d
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget v2, v1, Lcom/efs/sdk/base/a/f/a;->c:I

    if-nez v2, :cond_5b

    .line 7174
    iget-object v2, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    if-eqz v2, :cond_5a

    .line 2094
    array-length v2, v2

    if-nez v2, :cond_5b

    :cond_5a
    return-void

    .line 2098
    :cond_5b
    iget-object v0, v0, Lcom/efs/sdk/base/a/b/a;->c:Lcom/efs/sdk/base/a/b/b;

    .line 9140
    iget-byte v1, v1, Lcom/efs/sdk/base/a/f/a;->b:B

    .line 2098
    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/a/b/b;->a(B)Lcom/efs/sdk/base/a/b/e;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 2103
    invoke-interface {v0, p1}, Lcom/efs/sdk/base/a/b/e;->a(Lcom/efs/sdk/base/a/f/b;)V

    :cond_68
    return-void
.end method

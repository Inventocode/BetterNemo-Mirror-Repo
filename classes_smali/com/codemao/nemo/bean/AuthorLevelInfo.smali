.class public Lcom/codemao/nemo/bean/AuthorLevelInfo;
.super Ljava/lang/Object;
.source "AuthorLevelInfo.java"


# instance fields
.field private level:I

.field private signature_img_link:Ljava/lang/String;

.field private upgrade_hint:I

.field private user_id:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/codemao/nemo/bean/AuthorLevelInfo;->level:I

    return v0
.end method

.method public getSignature_img_link()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/bean/AuthorLevelInfo;->signature_img_link:Ljava/lang/String;

    return-object v0
.end method

.method public getUpgrade_hint()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/codemao/nemo/bean/AuthorLevelInfo;->upgrade_hint:I

    return v0
.end method

.method public getUser_id()J
    .registers 3

    .line 15
    iget-wide v0, p0, Lcom/codemao/nemo/bean/AuthorLevelInfo;->user_id:J

    return-wide v0
.end method

.method public setLevel(I)V
    .registers 2

    .line 23
    iput p1, p0, Lcom/codemao/nemo/bean/AuthorLevelInfo;->level:I

    return-void
.end method

.method public setSignature_img_link(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/codemao/nemo/bean/AuthorLevelInfo;->signature_img_link:Ljava/lang/String;

    return-void
.end method

.method public setUpgrade_hint(I)V
    .registers 2

    .line 31
    iput p1, p0, Lcom/codemao/nemo/bean/AuthorLevelInfo;->upgrade_hint:I

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 19
    iput-wide p1, p0, Lcom/codemao/nemo/bean/AuthorLevelInfo;->user_id:J

    return-void
.end method

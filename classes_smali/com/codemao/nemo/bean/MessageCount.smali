.class public Lcom/codemao/nemo/bean/MessageCount;
.super Ljava/lang/Object;
.source "MessageCount.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private comment_count:I

.field private like_collection_count:I

.field private re_create_count:I

.field private system_count:I

.field private user_id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment_count()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/codemao/nemo/bean/MessageCount;->comment_count:I

    return v0
.end method

.method public getLike_collection_count()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/codemao/nemo/bean/MessageCount;->like_collection_count:I

    return v0
.end method

.method public getRe_create_count()I
    .registers 2

    .line 29
    iget v0, p0, Lcom/codemao/nemo/bean/MessageCount;->re_create_count:I

    return v0
.end method

.method public getSystem_count()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/codemao/nemo/bean/MessageCount;->system_count:I

    return v0
.end method

.method public getUser_id()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/codemao/nemo/bean/MessageCount;->user_id:I

    return v0
.end method

.method public setComment_count(I)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/codemao/nemo/bean/MessageCount;->comment_count:I

    return-void
.end method

.method public setLike_collection_count(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/codemao/nemo/bean/MessageCount;->like_collection_count:I

    return-void
.end method

.method public setRe_create_count(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/codemao/nemo/bean/MessageCount;->re_create_count:I

    return-void
.end method

.method public setSystem_count(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/codemao/nemo/bean/MessageCount;->system_count:I

    return-void
.end method

.method public setUser_id(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/codemao/nemo/bean/MessageCount;->user_id:I

    return-void
.end method

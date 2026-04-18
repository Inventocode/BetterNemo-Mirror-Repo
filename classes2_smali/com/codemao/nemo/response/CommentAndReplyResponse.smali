.class public Lcom/codemao/nemo/response/CommentAndReplyResponse;
.super Ljava/lang/Object;
.source "CommentAndReplyResponse.java"


# instance fields
.field private id:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .line 8
    iget v0, p0, Lcom/codemao/nemo/response/CommentAndReplyResponse;->id:I

    return v0
.end method

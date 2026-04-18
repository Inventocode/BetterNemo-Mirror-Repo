.class public Lcom/codemao/nemo/bean/UserPublisWorks;
.super Lcom/ljwx/baseapp/response/BaseResponseListData;
.source "UserPublisWorks.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseapp/response/BaseResponseListData<",
        "Lcom/codemao/nemo/bean/NemoWorkPublishedListItem;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private counted:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/ljwx/baseapp/response/BaseResponseListData;-><init>()V

    return-void
.end method


# virtual methods
.method public isCounted()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/UserPublisWorks;->counted:Z

    return v0
.end method

.method public setCounted(Z)V
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/UserPublisWorks;->counted:Z

    return-void
.end method

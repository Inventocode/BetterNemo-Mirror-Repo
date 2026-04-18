.class public Lcom/qiniu/android/http/request/UploadRequestState;
.super Ljava/lang/Object;
.source "UploadRequestState.java"


# instance fields
.field private isUseOldServer:Z

.field private isUserCancel:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Lcom/qiniu/android/http/request/UploadRequestState;
    .registers 3

    .line 25
    new-instance v0, Lcom/qiniu/android/http/request/UploadRequestState;

    invoke-direct {v0}, Lcom/qiniu/android/http/request/UploadRequestState;-><init>()V

    .line 26
    iget-boolean v1, p0, Lcom/qiniu/android/http/request/UploadRequestState;->isUseOldServer:Z

    iput-boolean v1, v0, Lcom/qiniu/android/http/request/UploadRequestState;->isUseOldServer:Z

    .line 27
    iget-boolean v1, p0, Lcom/qiniu/android/http/request/UploadRequestState;->isUserCancel:Z

    iput-boolean v1, v0, Lcom/qiniu/android/http/request/UploadRequestState;->isUserCancel:Z

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/qiniu/android/http/request/UploadRequestState;->clone()Lcom/qiniu/android/http/request/UploadRequestState;

    move-result-object v0

    return-object v0
.end method

.method public isUseOldServer()Z
    .registers 2

    .line 17
    iget-boolean v0, p0, Lcom/qiniu/android/http/request/UploadRequestState;->isUseOldServer:Z

    return v0
.end method

.method isUserCancel()Z
    .registers 2

    .line 9
    iget-boolean v0, p0, Lcom/qiniu/android/http/request/UploadRequestState;->isUserCancel:Z

    return v0
.end method

.method public setUseOldServer(Z)V
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/qiniu/android/http/request/UploadRequestState;->isUseOldServer:Z

    return-void
.end method

.method setUserCancel(Z)V
    .registers 2

    .line 13
    iput-boolean p1, p0, Lcom/qiniu/android/http/request/UploadRequestState;->isUserCancel:Z

    return-void
.end method

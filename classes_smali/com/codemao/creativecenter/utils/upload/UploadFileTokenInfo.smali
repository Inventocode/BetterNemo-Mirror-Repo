.class public Lcom/codemao/creativecenter/utils/upload/UploadFileTokenInfo;
.super Ljava/lang/Object;
.source "UploadFileTokenInfo.java"


# instance fields
.field private file_path:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile_path()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/upload/UploadFileTokenInfo;->file_path:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/upload/UploadFileTokenInfo;->token:Ljava/lang/String;

    return-object v0
.end method

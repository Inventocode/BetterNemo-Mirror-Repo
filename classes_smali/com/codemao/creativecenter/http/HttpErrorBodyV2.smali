.class public Lcom/codemao/creativecenter/http/HttpErrorBodyV2;
.super Ljava/lang/Object;
.source "HttpErrorBodyV2.java"


# instance fields
.field private domain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/http/HttpErrorDetail;",
            ">;"
        }
    .end annotation
.end field

.field private error_code:Ljava/lang/String;

.field private error_message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/http/HttpErrorDetail;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/codemao/creativecenter/http/HttpErrorBodyV2;->domain:Ljava/util/List;

    return-object v0
.end method

.method public getError_code()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/creativecenter/http/HttpErrorBodyV2;->error_code:Ljava/lang/String;

    return-object v0
.end method

.method public getError_message()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/codemao/creativecenter/http/HttpErrorBodyV2;->error_message:Ljava/lang/String;

    return-object v0
.end method

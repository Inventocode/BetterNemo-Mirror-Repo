.class public Lcom/codemao/creativecenter/http/HttpErrorBodyV1;
.super Ljava/lang/Object;
.source "HttpErrorBodyV1.java"


# instance fields
.field private catastrophe:Lcom/codemao/creativecenter/http/Catastrophe;

.field private error_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCatastrophe()Lcom/codemao/creativecenter/http/Catastrophe;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/codemao/creativecenter/http/HttpErrorBodyV1;->catastrophe:Lcom/codemao/creativecenter/http/Catastrophe;

    return-object v0
.end method

.method public getError_code()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/codemao/creativecenter/http/HttpErrorBodyV1;->error_code:Ljava/lang/String;

    return-object v0
.end method

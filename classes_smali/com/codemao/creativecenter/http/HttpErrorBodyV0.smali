.class public Lcom/codemao/creativecenter/http/HttpErrorBodyV0;
.super Ljava/lang/Object;
.source "HttpErrorBodyV0.java"


# instance fields
.field private code:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/creativecenter/http/HttpErrorBodyV0;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/creativecenter/http/HttpErrorBodyV0;->msg:Ljava/lang/String;

    return-object v0
.end method

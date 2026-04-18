.class public Lcom/codemao/creativecenter/http/CmaoHttpException;
.super Ljava/lang/Exception;
.source "CmaoHttpException.java"


# instance fields
.field private final code:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/codemao/creativecenter/http/CmaoHttpException;->code:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/codemao/creativecenter/http/CmaoHttpException;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CmaoHttpException;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/codemao/creativecenter/http/CmaoHttpException;->message:Ljava/lang/String;

    return-object v0
.end method

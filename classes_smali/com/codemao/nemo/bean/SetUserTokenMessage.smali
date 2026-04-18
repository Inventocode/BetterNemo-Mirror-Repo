.class public Lcom/codemao/nemo/bean/SetUserTokenMessage;
.super Lcom/codemao/nemo/bean/BaseJsonBean;
.source "SetUserTokenMessage.java"


# instance fields
.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 6
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseJsonBean;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/codemao/nemo/bean/SetUserTokenMessage;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/nemo/bean/SetUserTokenMessage;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/codemao/nemo/bean/SetUserTokenMessage;->token:Ljava/lang/String;

    return-void
.end method

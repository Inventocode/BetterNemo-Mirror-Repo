.class public Lcom/cmic/sso/sdk/c/b/c;
.super Lcom/cmic/sso/sdk/c/b/g;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/cmic/sso/sdk/c/b/g;-><init>()V

    iput-object p1, p0, Lcom/cmic/sso/sdk/c/b/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cmic/sso/sdk/c/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lorg/json/JSONObject;
    .registers 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

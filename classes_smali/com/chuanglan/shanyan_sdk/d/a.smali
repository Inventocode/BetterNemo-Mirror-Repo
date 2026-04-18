.class public Lcom/chuanglan/shanyan_sdk/d/a;
.super Lcom/chuanglan/shanyan_sdk/d/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/chuanglan/shanyan_sdk/d/c;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Lcom/chuanglan/shanyan_sdk/d/b;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chuanglan/shanyan_sdk/d/b;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v1, Lcom/chuanglan/shanyan_sdk/d/f;->b:Lcom/chuanglan/shanyan_sdk/d/f;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chuanglan/shanyan_sdk/d/c;->a(Lcom/chuanglan/shanyan_sdk/d/f;Ljava/util/Map;Lcom/chuanglan/shanyan_sdk/d/b;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

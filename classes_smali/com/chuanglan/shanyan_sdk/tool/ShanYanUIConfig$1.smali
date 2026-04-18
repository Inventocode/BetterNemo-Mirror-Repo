.class Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmic/sso/sdk/view/LoginClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;-><init>(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/chuanglan/shanyan_sdk/tool/ShanYanUIConfig;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginClickComplete(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 3

    return-void
.end method

.method public onLoginClickStart(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 3

    return-void
.end method

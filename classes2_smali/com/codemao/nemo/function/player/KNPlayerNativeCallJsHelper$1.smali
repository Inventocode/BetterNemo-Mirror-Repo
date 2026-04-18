.class Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper$1;
.super Ljava/lang/Object;
.source "KNPlayerNativeCallJsHelper.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->getScreenShot(Lcom/codemao/toolssdk/cpp/view/WoodWebView;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/json/JSONObject;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/codemao/toolssdk/dsbridge/OnReturnValue;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V
    .registers 3

    .line 75
    iput-object p2, p0, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper$1;->val$handler:Lcom/codemao/toolssdk/dsbridge/OnReturnValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 75
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper$1;->invoke(Lorg/json/JSONObject;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lorg/json/JSONObject;)Lkotlin/Unit;
    .registers 6

    const-string v0, "url"

    const-string v1, "success"

    .line 78
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4c

    .line 80
    :try_start_b
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 81
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 82
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper$1;->val$handler:Lcom/codemao/toolssdk/dsbridge/OnReturnValue;

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/dsbridge/OnReturnValue;->onValue(Ljava/lang/Object;)V

    goto :goto_51

    .line 85
    :cond_29
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper$1;->val$handler:Lcom/codemao/toolssdk/dsbridge/OnReturnValue;

    invoke-interface {p1, v3}, Lcom/codemao/toolssdk/dsbridge/OnReturnValue;->onValue(Ljava/lang/Object;)V
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_2e} :catch_2f

    goto :goto_51

    :catch_2f
    move-exception p1

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper$1;->val$handler:Lcom/codemao/toolssdk/dsbridge/OnReturnValue;

    invoke-interface {v0, v3}, Lcom/codemao/toolssdk/dsbridge/OnReturnValue;->onValue(Ljava/lang/Object;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get_screen_shot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jscall-exception"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 92
    :cond_4c
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper$1;->val$handler:Lcom/codemao/toolssdk/dsbridge/OnReturnValue;

    invoke-interface {p1, v3}, Lcom/codemao/toolssdk/dsbridge/OnReturnValue;->onValue(Ljava/lang/Object;)V

    :goto_51
    return-object v3
.end method

.class Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper$2;
.super Ljava/lang/Object;
.source "KNPlayerNativeCallJsHelper.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;)V
    .registers 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 96
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper$2;->invoke(Ljava/lang/Integer;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Ljava/lang/Integer;Ljava/lang/String;)Lkotlin/Unit;
    .registers 3

    const-string p1, "流程-"

    const-string p2, "失败"

    .line 99
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

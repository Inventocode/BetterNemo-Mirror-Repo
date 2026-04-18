.class final Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$checkWorkSaveEnable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppOnMessageCallWeb.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->checkWorkSaveEnable(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $result:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$checkWorkSaveEnable$1;->$result:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 306
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$checkWorkSaveEnable$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_15

    .line 310
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$checkWorkSaveEnable$1;->$result:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_15

    .line 312
    sget-object v1, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;

    invoke-static {v1}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->access$getMGson(Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;)Lcom/google/gson/Gson;

    move-result-object v1

    .line 313
    const-class v2, Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;

    .line 312
    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 311
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

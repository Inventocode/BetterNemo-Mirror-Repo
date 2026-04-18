.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$completeText$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppDialogJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi;->completeText(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lcom/codemao/toolssdk/model/dsbridge/CompleteTextEvent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
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
.field final synthetic $gson:Lcom/google/gson/Gson;

.field final synthetic $success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$completeText$1;->$gson:Lcom/google/gson/Gson;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$completeText$1;->$success:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 172
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$completeText$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$completeText$1;->$gson:Lcom/google/gson/Gson;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;

    .line 174
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$completeText$1;->$success:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

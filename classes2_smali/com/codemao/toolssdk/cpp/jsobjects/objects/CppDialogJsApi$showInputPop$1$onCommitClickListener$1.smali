.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1$onCommitClickListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppDialogJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1;->onCommitClickListener(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $commonInputPop:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1$onCommitClickListener$1;->$commonInputPop:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 146
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1$onCommitClickListener$1;->invoke(Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    .line 147
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->getSuccess()Z

    move-result v2

    if-ne v2, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_14

    .line 148
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1$onCommitClickListener$1;->$commonInputPop:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    goto :goto_26

    .line 150
    :cond_14
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1$onCommitClickListener$1;->$commonInputPop:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->setErrorText(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1$onCommitClickListener$1;->$commonInputPop:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->commitLoading(Z)V

    :goto_26
    return-void
.end method

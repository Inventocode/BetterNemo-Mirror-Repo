.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1;
.super Ljava/lang/Object;
.source "CppDialogJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$BtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi;->showInputPop(Lcom/codemao/toolssdk/model/dsbridge/TextInputOptions;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitClickListener(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 9

    const-string v0, "commonInputPop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextEvent;

    .line 143
    invoke-virtual {p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->getContentText()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual {p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->getSelectTypeArray()Ljava/util/List;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    .line 142
    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 146
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi;->getToolsWebView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v2

    new-instance v3, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1$onCommitClickListener$1;

    invoke-direct {v3, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1$onCommitClickListener$1;-><init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    new-instance v4, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1$onCommitClickListener$2;

    invoke-direct {v4, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1$onCommitClickListener$2;-><init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi;->completeText(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lcom/codemao/toolssdk/model/dsbridge/CompleteTextEvent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public onExitClickListener(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 9

    const-string v0, "commonInputPop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextEvent;

    const/4 v2, 0x0

    const-string v3, "cancel"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/model/dsbridge/CompleteTextEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 136
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi;->getToolsWebView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v2

    sget-object v3, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1$onExitClickListener$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1$onExitClickListener$1;

    sget-object v4, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1$onExitClickListener$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi$showInputPop$1$onExitClickListener$2;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi;->completeText(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lcom/codemao/toolssdk/model/dsbridge/CompleteTextEvent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    .line 137
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

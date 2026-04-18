.class final Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppWebViewWork.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;->saveWork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $fail:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $startTime:J

.field final synthetic $success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/codemao/toolssdk/model/dsbridge/SaveResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/SaveResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;

    iput-wide p2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->$startTime:J

    iput-object p4, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->$success:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->$fail:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 52
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->invoke(Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;)V
    .registers 13

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 54
    sget-object v2, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    const/4 v3, 0x1

    .line 56
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;->getToolType()Ljava/lang/String;

    move-result-object v4

    .line 57
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;->getEnterFrom()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 58
    iget-wide v7, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->$startTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 59
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;->isRunningOfflineMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_32
    move-object v8, v1

    const/16 v9, 0x8

    const/4 v10, 0x0

    .line 54
    invoke-static/range {v2 .. v10}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->save$default(Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->$success:Lkotlin/jvm/functions/Function1;

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultCommon;->getSuccessData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_84

    .line 63
    :cond_45
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    const/4 v2, 0x0

    .line 65
    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;->getToolType()Ljava/lang/String;

    move-result-object v3

    .line 66
    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;->getEnterFrom()Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    .line 68
    iget-wide v6, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->$startTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 69
    iget-object v7, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;

    invoke-virtual {v7}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v7

    if-eqz v7, :cond_6e

    invoke-interface {v7}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;->isRunningOfflineMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_6e
    move-object v7, v1

    move-object v1, v0

    .line 63
    invoke-virtual/range {v1 .. v7}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->save(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 71
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;->$fail:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_84
    return-void
.end method

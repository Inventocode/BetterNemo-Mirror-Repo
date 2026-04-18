.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->connect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $macAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/utils/RxBlueClientUtils;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$1;->$isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$1;->this$0:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    iput-object p3, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$1;->$macAddress:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 233
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$1;->invoke(Ljava/lang/Integer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Integer;)V
    .registers 9

    .line 234
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$1;->$isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_18

    .line 235
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$1;->this$0:Lcom/codemao/toolssdk/utils/RxBlueClientUtils;

    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$1;->$macAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->disconnect(Ljava/lang/String;)V

    .line 236
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "连接超时"

    invoke-static/range {v1 .. v6}, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->connect$default(Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_18
    return-void
.end method

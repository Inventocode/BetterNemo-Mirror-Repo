.class final Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$3$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AIKidsToolsManagerBiz.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3;->invoke(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Double;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$3$2;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 81
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$3$2;->invoke(D)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(D)V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz$initAIKidsBiz$3$3$2;->this$0:Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;

    double-to-float p1, p1

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->access$sendAudioStreamVolume(Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;F)V

    return-void
.end method

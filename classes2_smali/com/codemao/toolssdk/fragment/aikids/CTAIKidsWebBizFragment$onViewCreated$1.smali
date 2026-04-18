.class final Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBizFragment$onViewCreated$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CTAIKidsWebBizFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBizFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;",
        "Lkotlin/jvm/functions/Function2<",
        "-",
        "Ljava/lang/Boolean;",
        "-",
        "Ljava/lang/Boolean;",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBizFragment$onViewCreated$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBizFragment$onViewCreated$1;

    invoke-direct {v0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBizFragment$onViewCreated$1;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBizFragment$onViewCreated$1;->INSTANCE:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBizFragment$onViewCreated$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 18
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBizFragment$onViewCreated$1;->invoke(Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;Lkotlin/jvm/functions/Function2;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;Lkotlin/jvm/functions/Function2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 19
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "接收到前端的通知:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    return-void
.end method

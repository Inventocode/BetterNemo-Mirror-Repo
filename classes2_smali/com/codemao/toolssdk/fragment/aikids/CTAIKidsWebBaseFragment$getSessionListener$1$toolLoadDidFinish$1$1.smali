.class final Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CTAIKidsWebBaseFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1$1;

    invoke-direct {v0}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1$1;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1$1;->INSTANCE:Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 103
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/fragment/aikids/CTAIKidsWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 3

    .line 104
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "通知ready成功"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    return-void
.end method

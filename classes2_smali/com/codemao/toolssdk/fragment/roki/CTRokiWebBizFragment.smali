.class public Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment;
.super Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;
.source "CTRokiWebBizFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;

.field private static testManager:Lcom/codemao/toolssdk/manager/CMToolsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment;->Companion:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTestManager$cp()Lcom/codemao/toolssdk/manager/CMToolsManager;
    .registers 1

    .line 18
    sget-object v0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment;->testManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    return-object v0
.end method

.method public static final synthetic access$setTestManager$cp(Lcom/codemao/toolssdk/manager/CMToolsManager;)V
    .registers 1

    .line 18
    sput-object p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment;->testManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-super {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

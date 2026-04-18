.class public final Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity$Companion;
.super Ljava/lang/Object;
.source "DefaultVCSBcmActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCallIntent(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;ZZLjava/lang/String;)Landroid/content/Intent;
    .registers 9

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "worksEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "originBcmPath"

    invoke-static {p5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "EXTRA_IS_ASSISTOR"

    .line 64
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "EXTRA_IS_ASSIST_BCM"

    .line 65
    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "EXTRA_ORIGIN_BCM_PATH"

    .line 66
    invoke-virtual {v1, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v1
.end method

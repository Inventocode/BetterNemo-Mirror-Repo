.class public final Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$Companion;
.super Ljava/lang/Object;
.source "ExtensionCategoriesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtensionCategoriesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtensionCategoriesActivity.kt\ncom/codemao/creativecenter/activity/ExtensionCategoriesActivity$Companion\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,124:1\n37#2,2:125\n37#2,2:127\n*E\n*S KotlinDebug\n*F\n+ 1 ExtensionCategoriesActivity.kt\ncom/codemao/creativecenter/activity/ExtensionCategoriesActivity$Companion\n*L\n37#1,2:125\n38#1,2:127\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final startActivity(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 36
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/creativecenter/activity/ExtensionCategoriesActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_1c

    new-array v4, v2, [Ljava/lang/String;

    .line 38
    invoke-interface {p2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, [Ljava/lang/String;

    goto :goto_1d

    :cond_1c
    move-object p2, v3

    :goto_1d
    const-string v4, "categories"

    .line 37
    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_30

    new-array p2, v2, [Ljava/lang/String;

    .line 38
    invoke-interface {p3, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p2

    check-cast v3, [Ljava/lang/String;

    :cond_30
    const-string p2, "hiddenBlocks"

    .line 38
    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 41
    sget p2, Lcom/codemao/creativecenter/R$anim;->creative_from_bottom:I

    .line 42
    sget p3, Lcom/codemao/creativecenter/R$anim;->creative_material_exit_top:I

    .line 40
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

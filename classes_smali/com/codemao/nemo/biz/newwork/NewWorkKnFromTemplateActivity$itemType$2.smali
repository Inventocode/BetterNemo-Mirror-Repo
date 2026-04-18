.class final Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$itemType$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NewWorkKnFromTemplateActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding<",
        "Lcom/codemao/nemo/bean/KnTemplateListItem;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$itemType$2;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$itemType$2;

    invoke-direct {v0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$itemType$2;-><init>()V

    sput-object v0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$itemType$2;->INSTANCE:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$itemType$2;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding<",
            "Lcom/codemao/nemo/bean/KnTemplateListItem;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v8, Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;

    const-class v1, Lcom/codemao/nemo/bean/KnTemplateListItem;

    const v2, 0x7f0d01b2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;-><init>(Ljava/lang/Class;IILjava/lang/Integer;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$itemType$2;->invoke()Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;

    move-result-object v0

    return-object v0
.end method

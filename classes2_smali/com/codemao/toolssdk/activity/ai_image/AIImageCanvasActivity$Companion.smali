.class public final Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;
.super Ljava/lang/Object;
.source "AIImageCanvasActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;
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

    invoke-direct {p0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getModeId()Ljava/lang/Integer;
    .registers 2

    .line 56
    invoke-static {}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getModeId$cp()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectStyles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/model/http/Style;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getSelectStyles$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final startActivity(Landroid/app/Activity;ZLcom/codemao/toolssdk/model/dsbridge/StageSize;)V
    .registers 6

    if-eqz p1, :cond_18

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isScene"

    .line 65
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "stage_size"

    .line 66
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p2, 0x3ed

    .line 67
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_18
    return-void
.end method

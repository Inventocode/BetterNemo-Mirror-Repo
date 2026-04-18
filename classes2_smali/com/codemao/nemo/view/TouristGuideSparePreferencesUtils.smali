.class public final Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils;
.super Ljava/lang/Object;
.source "TouristGuideSparePreferencesUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils;->Companion:Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils$Companion;

    return-void
.end method

.method public static final canShow()Z
    .registers 1

    sget-object v0, Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils;->Companion:Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils$Companion;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils$Companion;->canShow()Z

    move-result v0

    return v0
.end method

.method public static final isShowed()V
    .registers 1

    sget-object v0, Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils;->Companion:Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils$Companion;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/TouristGuideSparePreferencesUtils$Companion;->isShowed()V

    return-void
.end method

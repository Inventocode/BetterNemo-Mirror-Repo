.class public final Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;
.super Ljava/lang/Object;
.source "CommonInputPopV2.kt"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->initIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/google/android/material/tabs/TabLayout;

.field final synthetic this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Lcom/google/android/material/tabs/TabLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    iput-object p2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;->$this_apply:Lcom/google/android/material/tabs/TabLayout;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 2

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 6

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 452
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$setTabIndexSelected$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;I)V

    .line 453
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabSelected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dVariable(Ljava/lang/String;)V

    if-nez p1, :cond_38

    .line 455
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {v0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getGuideline$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)Landroidx/constraintlayout/widget/Guideline;

    move-result-object v0

    if-eqz v0, :cond_90

    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getKeyboardHeight$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    goto :goto_90

    .line 459
    :cond_38
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;->$this_apply:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fe3333333333333L  # 0.6

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 460
    sget-object v1, Lcom/codemao/toolssdk/evolving/android/util/DeviceUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/util/DeviceUtils;

    iget-object v2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;->$this_apply:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/evolving/android/util/DeviceUtils;->isPad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 462
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {v0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getGuideline$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)Landroidx/constraintlayout/widget/Guideline;

    move-result-object v0

    if-eqz v0, :cond_90

    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getKeyboardHeight$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    goto :goto_90

    .line 464
    :cond_6b
    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getKeyboardHeight$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)I

    move-result v1

    if-gt v1, v0, :cond_7f

    .line 465
    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getGuideline$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    if-eqz v1, :cond_90

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    goto :goto_90

    .line 467
    :cond_7f
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {v0}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getGuideline$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)Landroidx/constraintlayout/widget/Guideline;

    move-result-object v0

    if-eqz v0, :cond_90

    iget-object v1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {v1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getKeyboardHeight$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineEnd(I)V

    .line 471
    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initIndicator$1$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {v0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$selectTab(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 2

    return-void
.end method

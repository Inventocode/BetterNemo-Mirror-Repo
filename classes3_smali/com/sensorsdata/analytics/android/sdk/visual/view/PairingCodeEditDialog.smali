.class public Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;
.super Landroid/app/Dialog;
.source "PairingCodeEditDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.PairingCodeEditDialog"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;)Landroid/content/Context;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private dip2px(Landroid/content/Context;F)I
    .registers 3

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000  # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private isActivityFinishingOrDestroyed(Landroid/content/Context;)Z
    .registers 4

    .line 140
    check-cast p1, Landroid/app/Activity;

    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity is finish,name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SA.PairingCodeEditDialog"

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 145
    :cond_28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_33

    .line 146
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    return p1

    :cond_33
    const/4 p1, 0x0

    return p1
.end method

.method private isLiving()Z
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 132
    :cond_6
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_11

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->isActivityFinishingOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dismiss()V
    .registers 4

    .line 114
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "SA.PairingCodeEditDialog"

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1e

    invoke-direct {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->isActivityFinishingOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "Activity is finish"

    .line 115
    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 117
    :cond_1e
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_31

    :try_start_24
    const-string v0, "isShowing() == true, dismiss"

    .line 119
    invoke-static {v2, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v0

    .line 122
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_31
    :goto_31
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget p1, Lcom/sensorsdata/analytics/android/sdk/visual/R$layout;->sensors_analytics_verification_code:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 53
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x43af0000  # 350.0f

    invoke-direct {p0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 56
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v1, -0x1

    .line 58
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40e00000  # 7.0f

    invoke-direct {p0, v1, v2}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x4

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 63
    :cond_43
    sget p1, Lcom/sensorsdata/analytics/android/sdk/visual/R$id;->sensors_analytics_verification_code_title:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/sensorsdata/analytics/android/sdk/visual/R$string;->sensors_analytics_visual_code_title:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 65
    sget p1, Lcom/sensorsdata/analytics/android/sdk/visual/R$id;->sensors_analytics_pairing_code:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;

    .line 66
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog$1;-><init>(Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;)V

    invoke-virtual {p1, v0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditText;->setOnPairingCodeChangedListener(Lcom/sensorsdata/analytics/android/sdk/visual/view/IPairingCodeInterface$OnPairingCodeChangedListener;)V

    return-void
.end method

.method public show()V
    .registers 4

    .line 104
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->isLiving()Z

    move-result v0

    const-string v1, "SA.PairingCodeEditDialog"

    if-nez v0, :cond_e

    const-string v0, "Activity is finish"

    .line 105
    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 107
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/visual/view/PairingCodeEditDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    :goto_27
    return-void
.end method

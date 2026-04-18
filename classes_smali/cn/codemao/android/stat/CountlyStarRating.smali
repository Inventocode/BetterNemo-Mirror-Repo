.class public Lcn/codemao/android/stat/CountlyStarRating;
.super Ljava/lang/Object;
.source "CountlyStarRating.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;,
        Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;
    }
.end annotation


# static fields
.field protected static final STAR_RATING_EVENT_KEY:Ljava/lang/String; = "[CLY]_star_rating"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAutomaticStarRatingSessionCount(Landroid/content/Context;)V
    .registers 3

    .line 371
    invoke-static {p0}, Lcn/codemao/android/stat/CountlyStarRating;->loadStarRatingPreferences(Landroid/content/Context;)Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;

    move-result-object v0

    const/4 v1, 0x0

    .line 372
    iput v1, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->sessionAmount:I

    .line 373
    invoke-static {p0, v0}, Lcn/codemao/android/stat/CountlyStarRating;->saveStarRatingPreferences(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;)V

    return-void
.end method

.method public static getAutomaticStarRatingSessionLimit(Landroid/content/Context;)I
    .registers 1

    .line 350
    invoke-static {p0}, Lcn/codemao/android/stat/CountlyStarRating;->loadStarRatingPreferences(Landroid/content/Context;)Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;

    move-result-object p0

    .line 351
    iget p0, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->sessionLimit:I

    return p0
.end method

.method public static getCurrentVersionsSessionCount(Landroid/content/Context;)I
    .registers 1

    .line 361
    invoke-static {p0}, Lcn/codemao/android/stat/CountlyStarRating;->loadStarRatingPreferences(Landroid/content/Context;)Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;

    move-result-object p0

    .line 362
    iget p0, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->sessionAmount:I

    return p0
.end method

.method private static loadStarRatingPreferences(Landroid/content/Context;)Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;
    .registers 2

    .line 261
    new-instance v0, Lcn/codemao/android/stat/CountlyStore;

    invoke-direct {v0, p0}, Lcn/codemao/android/stat/CountlyStore;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-virtual {v0}, Lcn/codemao/android/stat/CountlyStore;->getStarRatingPreferences()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    .line 265
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 268
    :try_start_11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-static {v0}, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->fromJSON(Lorg/json/JSONObject;)Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;

    move-result-object p0
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_2a

    :catch_1b
    move-exception p0

    .line 271
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    new-instance p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;

    invoke-direct {p0}, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;-><init>()V

    goto :goto_2a

    .line 275
    :cond_25
    new-instance p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;

    invoke-direct {p0}, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;-><init>()V

    :goto_2a
    return-object p0
.end method

.method public static registerAppSession(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;)V
    .registers 6

    .line 324
    invoke-static {p0}, Lcn/codemao/android/stat/CountlyStarRating;->loadStarRatingPreferences(Landroid/content/Context;)Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;

    move-result-object v0

    .line 326
    invoke-static {p0}, Lcn/codemao/android/stat/DeviceInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 330
    iget-object v2, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->appVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-boolean v2, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->disabledAutomaticForNewVersions:Z

    if-nez v2, :cond_1d

    .line 331
    iput-object v1, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->appVersion:Ljava/lang/String;

    const/4 v1, 0x0

    .line 332
    iput-boolean v1, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->isShownForCurrentVersion:Z

    .line 333
    iput v1, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->sessionAmount:I

    .line 336
    :cond_1d
    iget v1, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->sessionAmount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->sessionAmount:I

    .line 337
    iget v3, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->sessionLimit:I

    if-lt v1, v3, :cond_3e

    iget-boolean v1, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->isShownForCurrentVersion:Z

    if-nez v1, :cond_3e

    iget-boolean v1, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->automaticRatingShouldBeShown:Z

    if-eqz v1, :cond_3e

    iget-boolean v1, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->disabledAutomaticForNewVersions:Z

    if-eqz v1, :cond_37

    iget-boolean v1, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->automaticHasBeenShown:Z

    if-nez v1, :cond_3e

    .line 338
    :cond_37
    invoke-static {p0, p1}, Lcn/codemao/android/stat/CountlyStarRating;->showStarRating(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;)V

    .line 339
    iput-boolean v2, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->isShownForCurrentVersion:Z

    .line 340
    iput-boolean v2, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->automaticHasBeenShown:Z

    .line 343
    :cond_3e
    invoke-static {p0, v0}, Lcn/codemao/android/stat/CountlyStarRating;->saveStarRatingPreferences(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;)V

    return-void
.end method

.method private static saveStarRatingPreferences(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;)V
    .registers 3

    .line 287
    new-instance v0, Lcn/codemao/android/stat/CountlyStore;

    invoke-direct {v0, p0}, Lcn/codemao/android/stat/CountlyStore;-><init>(Landroid/content/Context;)V

    .line 288
    invoke-virtual {p1}, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->toJSON()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcn/codemao/android/stat/CountlyStore;->setStarRatingPreferences(Ljava/lang/String;)V

    return-void
.end method

.method public static setIfRatingDialogIsCancellable(Landroid/content/Context;Z)V
    .registers 3

    .line 383
    invoke-static {p0}, Lcn/codemao/android/stat/CountlyStarRating;->loadStarRatingPreferences(Landroid/content/Context;)Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;

    move-result-object v0

    .line 384
    iput-boolean p1, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->isDialogCancellable:Z

    .line 385
    invoke-static {p0, v0}, Lcn/codemao/android/stat/CountlyStarRating;->saveStarRatingPreferences(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;)V

    return-void
.end method

.method public static setShowDialogAutomatically(Landroid/content/Context;Z)V
    .registers 3

    .line 298
    invoke-static {p0}, Lcn/codemao/android/stat/CountlyStarRating;->loadStarRatingPreferences(Landroid/content/Context;)Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;

    move-result-object v0

    .line 299
    iput-boolean p1, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->automaticRatingShouldBeShown:Z

    .line 300
    invoke-static {p0, v0}, Lcn/codemao/android/stat/CountlyStarRating;->saveStarRatingPreferences(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;)V

    return-void
.end method

.method public static setStarRatingDisableAskingForEachAppVersion(Landroid/content/Context;Z)V
    .registers 3

    .line 312
    invoke-static {p0}, Lcn/codemao/android/stat/CountlyStarRating;->loadStarRatingPreferences(Landroid/content/Context;)Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;

    move-result-object v0

    .line 313
    iput-boolean p1, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->disabledAutomaticForNewVersions:Z

    .line 314
    invoke-static {p0, v0}, Lcn/codemao/android/stat/CountlyStarRating;->saveStarRatingPreferences(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;)V

    return-void
.end method

.method public static setStarRatingInitConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 233
    invoke-static {p0}, Lcn/codemao/android/stat/CountlyStarRating;->loadStarRatingPreferences(Landroid/content/Context;)Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;

    move-result-object v0

    if-ltz p1, :cond_8

    .line 236
    iput p1, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->sessionLimit:I

    :cond_8
    if-eqz p2, :cond_c

    .line 240
    iput-object p2, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextTitle:Ljava/lang/String;

    :cond_c
    if-eqz p3, :cond_10

    .line 244
    iput-object p3, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextMessage:Ljava/lang/String;

    :cond_10
    if-eqz p4, :cond_14

    .line 248
    iput-object p4, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextDismiss:Ljava/lang/String;

    .line 251
    :cond_14
    invoke-static {p0, v0}, Lcn/codemao/android/stat/CountlyStarRating;->saveStarRatingPreferences(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;)V

    return-void
.end method

.method public static showStarRating(Landroid/content/Context;Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;)V
    .registers 9

    .line 40
    invoke-static {p0}, Lcn/codemao/android/stat/CountlyStarRating;->loadStarRatingPreferences(Landroid/content/Context;)Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;

    move-result-object v0

    .line 41
    iget-object v2, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextTitle:Ljava/lang/String;

    iget-object v3, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextMessage:Ljava/lang/String;

    iget-object v4, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextDismiss:Ljava/lang/String;

    iget-boolean v5, v0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->isDialogCancellable:Z

    move-object v1, p0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcn/codemao/android/stat/CountlyStarRating;->showStarRatingCustom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/codemao/android/stat/CountlyStarRating$RatingCallback;)V

    return-void
.end method

.method public static showStarRatingCustom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/codemao/android/stat/CountlyStarRating$RatingCallback;)V
    .registers 9

    .line 62
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_16

    .line 63
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p0

    invoke-virtual {p0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "CodeMaoStat"

    const-string p1, "Can\'t show star rating dialog, the provided context is not based off a activity"

    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return-void

    :cond_16
    const-string v0, "layout_inflater"

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 70
    sget v1, Lcn/codemao/android/stat/R$layout;->star_rating_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 71
    sget v1, Lcn/codemao/android/stat/R$id;->ratingBar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RatingBar;

    .line 73
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 77
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcn/codemao/android/stat/CountlyStarRating$2;

    invoke-direct {p2, p5}, Lcn/codemao/android/stat/CountlyStarRating$2;-><init>(Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;)V

    .line 78
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcn/codemao/android/stat/CountlyStarRating$1;

    invoke-direct {p2, p5}, Lcn/codemao/android/stat/CountlyStarRating$1;-><init>(Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;)V

    .line 87
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    .line 99
    new-instance p2, Lcn/codemao/android/stat/CountlyStarRating$3;

    invoke-direct {p2, p0, p1, p5}, Lcn/codemao/android/stat/CountlyStarRating$3;-><init>(Landroid/content/Context;Landroid/app/AlertDialog;Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;)V

    invoke-virtual {v1, p2}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    return-void
.end method

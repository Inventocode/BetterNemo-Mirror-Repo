.class final Lcn/codemao/android/stat/CountlyStarRating$3;
.super Ljava/lang/Object;
.source "CountlyStarRating.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/stat/CountlyStarRating;->showStarRatingCustom(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcn/codemao/android/stat/CountlyStarRating$RatingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/AlertDialog;Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;)V
    .registers 4

    .line 99
    iput-object p1, p0, Lcn/codemao/android/stat/CountlyStarRating$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/codemao/android/stat/CountlyStarRating$3;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcn/codemao/android/stat/CountlyStarRating$3;->val$callback:Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .registers 5

    float-to-int p1, p2

    .line 104
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p2

    const-string p3, "star-rating"

    invoke-virtual {p2, p3}, Lcn/codemao/android/stat/CodeMaoStat;->getConsent(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 105
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "platform"

    const-string v0, "android"

    .line 106
    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object p3, p0, Lcn/codemao/android/stat/CountlyStarRating$3;->val$context:Landroid/content/Context;

    invoke-static {p3}, Lcn/codemao/android/stat/DeviceInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "app_version"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "rating"

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object p3

    const-string v0, "session"

    invoke-virtual {p3, v0, p2}, Lcn/codemao/android/stat/CodeMaoStat;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    :cond_43
    iget-object p2, p0, Lcn/codemao/android/stat/CountlyStarRating$3;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    .line 114
    iget-object p2, p0, Lcn/codemao/android/stat/CountlyStarRating$3;->val$callback:Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;

    if-eqz p2, :cond_4f

    .line 115
    invoke-interface {p2, p1}, Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;->onRate(I)V

    :cond_4f
    return-void
.end method

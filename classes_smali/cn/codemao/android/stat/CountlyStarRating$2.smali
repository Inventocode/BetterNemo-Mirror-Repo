.class final Lcn/codemao/android/stat/CountlyStarRating$2;
.super Ljava/lang/Object;
.source "CountlyStarRating.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcn/codemao/android/stat/CountlyStarRating$2;->val$callback:Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 81
    iget-object p1, p0, Lcn/codemao/android/stat/CountlyStarRating$2;->val$callback:Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;

    if-eqz p1, :cond_7

    .line 83
    invoke-interface {p1}, Lcn/codemao/android/stat/CountlyStarRating$RatingCallback;->onDismiss()V

    :cond_7
    return-void
.end method

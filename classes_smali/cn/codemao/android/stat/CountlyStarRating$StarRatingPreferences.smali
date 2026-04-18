.class Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;
.super Ljava/lang/Object;
.source "CountlyStarRating.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/codemao/android/stat/CountlyStarRating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StarRatingPreferences"
.end annotation


# static fields
.field private static final KEY_APP_VERSION:Ljava/lang/String; = "sr_app_version"

.field private static final KEY_AUTOMATIC_HAS_BEEN_SHOWN:Ljava/lang/String; = "sr_automatic_has_been_shown"

.field private static final KEY_AUTOMATIC_RATING_IS_SHOWN:Ljava/lang/String; = "sr_is_automatic_shown"

.field private static final KEY_DIALOG_IS_CANCELLABLE:Ljava/lang/String; = "sr_automatic_dialog_is_cancellable"

.field private static final KEY_DIALOG_TEXT_DISMISS:Ljava/lang/String; = "sr_text_dismiss"

.field private static final KEY_DIALOG_TEXT_MESSAGE:Ljava/lang/String; = "sr_text_message"

.field private static final KEY_DIALOG_TEXT_TITLE:Ljava/lang/String; = "sr_text_title"

.field private static final KEY_DISABLE_AUTOMATIC_NEW_VERSIONS:Ljava/lang/String; = "sr_is_disable_automatic_new"

.field private static final KEY_IS_SHOWN_FOR_CURRENT:Ljava/lang/String; = "sr_is_shown"

.field private static final KEY_SESSION_AMOUNT:Ljava/lang/String; = "sr_session_amount"

.field private static final KEY_SESSION_LIMIT:Ljava/lang/String; = "sr_session_limit"


# instance fields
.field appVersion:Ljava/lang/String;

.field automaticHasBeenShown:Z

.field automaticRatingShouldBeShown:Z

.field dialogTextDismiss:Ljava/lang/String;

.field dialogTextMessage:Ljava/lang/String;

.field dialogTextTitle:Ljava/lang/String;

.field disabledAutomaticForNewVersions:Z

.field isDialogCancellable:Z

.field isShownForCurrentVersion:Z

.field sessionAmount:I

.field sessionLimit:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 125
    iput-object v0, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->appVersion:Ljava/lang/String;

    const/4 v0, 0x5

    .line 126
    iput v0, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->sessionLimit:I

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->sessionAmount:I

    .line 128
    iput-boolean v0, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->isShownForCurrentVersion:Z

    .line 129
    iput-boolean v0, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->automaticRatingShouldBeShown:Z

    .line 130
    iput-boolean v0, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->disabledAutomaticForNewVersions:Z

    .line 131
    iput-boolean v0, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->automaticHasBeenShown:Z

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->isDialogCancellable:Z

    const-string v0, "App rating"

    .line 133
    iput-object v0, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextTitle:Ljava/lang/String;

    const-string v0, "Please rate this app"

    .line 134
    iput-object v0, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextMessage:Ljava/lang/String;

    const-string v0, "Cancel"

    .line 135
    iput-object v0, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextDismiss:Ljava/lang/String;

    return-void
.end method

.method static fromJSON(Lorg/json/JSONObject;)Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;
    .registers 8

    const-string v0, "sr_text_dismiss"

    const-string v1, "sr_text_message"

    const-string v2, "sr_text_title"

    .line 187
    new-instance v3, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;

    invoke-direct {v3}, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;-><init>()V

    if-eqz p0, :cond_87

    :try_start_d
    const-string v4, "sr_app_version"

    .line 191
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->appVersion:Ljava/lang/String;

    const-string v4, "sr_session_limit"

    const/4 v5, 0x5

    .line 192
    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->sessionLimit:I

    const-string v4, "sr_session_amount"

    const/4 v5, 0x0

    .line 193
    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->sessionAmount:I

    const-string v4, "sr_is_shown"

    .line 194
    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->isShownForCurrentVersion:Z

    const-string v4, "sr_is_automatic_shown"

    const/4 v6, 0x1

    .line 195
    invoke-virtual {p0, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->automaticRatingShouldBeShown:Z

    const-string v4, "sr_is_disable_automatic_new"

    .line 196
    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->disabledAutomaticForNewVersions:Z

    const-string v4, "sr_automatic_has_been_shown"

    .line 197
    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->automaticHasBeenShown:Z

    const-string v4, "sr_automatic_dialog_is_cancellable"

    .line 198
    invoke-virtual {p0, v4, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->isDialogCancellable:Z

    .line 200
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5c

    .line 201
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextTitle:Ljava/lang/String;

    .line 204
    :cond_5c
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 205
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextMessage:Ljava/lang/String;

    .line 208
    :cond_68
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_87

    .line 209
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextDismiss:Ljava/lang/String;
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_74} :catch_75

    goto :goto_87

    :catch_75
    move-exception p0

    .line 213
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_87

    const-string v0, "CodeMaoStat"

    const-string v1, "Got exception converting JSON to a StarRatingPreferences"

    .line 214
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_87
    :goto_87
    return-object v3
.end method


# virtual methods
.method toJSON()Lorg/json/JSONObject;
    .registers 5

    .line 155
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "sr_app_version"

    .line 158
    iget-object v2, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sr_session_limit"

    .line 159
    iget v2, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->sessionLimit:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sr_session_amount"

    .line 160
    iget v2, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->sessionAmount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "sr_is_shown"

    .line 161
    iget-boolean v2, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->isShownForCurrentVersion:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "sr_is_automatic_shown"

    .line 162
    iget-boolean v2, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->automaticRatingShouldBeShown:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "sr_is_disable_automatic_new"

    .line 163
    iget-boolean v2, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->disabledAutomaticForNewVersions:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "sr_automatic_has_been_shown"

    .line 164
    iget-boolean v2, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->automaticHasBeenShown:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "sr_automatic_dialog_is_cancellable"

    .line 165
    iget-boolean v2, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->isDialogCancellable:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "sr_text_title"

    .line 166
    iget-object v2, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sr_text_message"

    .line 167
    iget-object v2, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sr_text_dismiss"

    .line 168
    iget-object v2, p0, Lcn/codemao/android/stat/CountlyStarRating$StarRatingPreferences;->dialogTextDismiss:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_52} :catch_53

    goto :goto_65

    :catch_53
    move-exception v1

    .line 171
    invoke-static {}, Lcn/codemao/android/stat/CodeMaoStat;->sharedInstance()Lcn/codemao/android/stat/CodeMaoStat;

    move-result-object v2

    invoke-virtual {v2}, Lcn/codemao/android/stat/CodeMaoStat;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_65

    const-string v2, "CodeMaoStat"

    const-string v3, "Got exception converting an StarRatingPreferences to JSON"

    .line 172
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_65
    :goto_65
    return-object v0
.end method

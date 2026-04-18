.class public Lcom/codemao/creativecenter/utils/CreativeSprefUtil;
.super Ljava/lang/Object;
.source "CreativeSprefUtil.java"


# static fields
.field private static sEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public static getActorDrawReportTime()J
    .registers 4

    .line 92
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "actor_draw_edit_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getActorUploadReportTime()J
    .registers 4

    .line 83
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "actor_upload_edit_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBackGroundDrawReportTime()J
    .registers 4

    .line 119
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "background_draw_edit_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getBackGroundUploadReportTime()J
    .registers 4

    .line 111
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "background_upload_edit_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCreateStartTime()J
    .registers 4

    .line 75
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "create_time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getEditor()Landroid/content/SharedPreferences$Editor;
    .registers 1

    .line 30
    sget-object v0, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->sEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_e

    .line 31
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->sEditor:Landroid/content/SharedPreferences$Editor;

    .line 33
    :cond_e
    sget-object v0, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->sEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static getMidiMode()I
    .registers 3

    .line 127
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "midi_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getThemeVersion()I
    .registers 3

    .line 102
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "theme_material_version"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 151
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getValue(Ljava/lang/String;Z)Z
    .registers 3

    .line 147
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static hasShowGuideRework()Z
    .registers 3

    .line 49
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GUIDE_REWORK"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static hasShowGuideVideo()Z
    .registers 3

    .line 41
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GUIDE_VIDEO"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isThemeGuideShowed()Z
    .registers 3

    .line 139
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_theme_guide_show"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isThemeSuccessShowed()Z
    .registers 3

    .line 131
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_theme_success"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static obtain()Landroid/content/SharedPreferences;
    .registers 1

    const-string v0, "creative-config"

    .line 37
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->obtain(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 3

    .line 58
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static putActorDrawStartTime(J)V
    .registers 4

    .line 87
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "actor_draw_edit_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static putActorUploadStartTime(J)V
    .registers 4

    .line 79
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "actor_upload_edit_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static putBackGroundDrawStartTime(J)V
    .registers 4

    .line 115
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "background_draw_edit_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static putBackGroundUploadStartTime(J)V
    .registers 4

    .line 107
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "background_upload_edit_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static putCreateStartTime(J)V
    .registers 4

    .line 71
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "create_time"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static putMidiMode(I)V
    .registers 3

    .line 123
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "midi_mode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static putThemeVersion(I)V
    .registers 3

    .line 97
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "theme_material_version"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static putValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 159
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static putValue(Ljava/lang/String;Z)V
    .registers 3

    .line 155
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static showGuideRework()V
    .registers 3

    .line 53
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GUIDE_REWORK"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static showGuideVideo()V
    .registers 3

    .line 45
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "GUIDE_VIDEO"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static showThemeGuide()V
    .registers 3

    .line 143
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_theme_guide_show"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static showThemeSuccess()V
    .registers 3

    .line 135
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeSprefUtil;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_theme_success"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

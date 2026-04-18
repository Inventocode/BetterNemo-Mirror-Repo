.class public Lcom/sensorsdata/analytics/android/autotrack/utils/KeyboardViewUtil;
.super Ljava/lang/Object;
.source "KeyboardViewUtil.java"


# static fields
.field private static final MATCH_RULE_KEYBOARD:Ljava/lang/String; = "^([A-Za-z]|[0-9])"

.field private static final TAG_KEYBOARD:Ljava/lang/String; = "keyboard_tag"

.field private static isSensorsCheckKeyboard:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getKeyboardSimilarFatherView(Landroid/view/View;)Z
    .registers 12

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_7a

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 78
    sget v2, Lcom/sensorsdata/analytics/android/autotrack/R$id;->sensors_analytics_tag_view_keyboard:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_19

    return v3

    .line 81
    :cond_19
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le v2, v3, :cond_7a

    .line 83
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v2, :cond_7a

    if-eq p0, v4, :cond_77

    .line 87
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 88
    sget v6, Lcom/sensorsdata/analytics/android/autotrack/R$id;->sensors_analytics_tag_view_keyboard:I

    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_36

    :goto_34
    const/4 v1, 0x1

    goto :goto_7a

    .line 92
    :cond_36
    instance-of v7, v5, Landroid/view/ViewGroup;

    const-string v8, "^([A-Za-z]|[0-9])"

    const-string v9, "keyboard_tag"

    if-eqz v7, :cond_66

    .line 93
    check-cast v5, Landroid/view/ViewGroup;

    .line 94
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_45
    if-ge v7, v6, :cond_5a

    .line 97
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_57

    const/4 v6, 0x1

    goto :goto_5b

    :cond_57
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    :cond_5a
    const/4 v6, 0x0

    :goto_5b
    if-eqz v6, :cond_77

    .line 103
    sget p0, Lcom/sensorsdata/analytics/android/autotrack/R$id;->sensors_analytics_tag_view_keyboard:I

    invoke-virtual {v5, p0, v9}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 104
    invoke-virtual {v0, p0, v9}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_34

    .line 109
    :cond_66
    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 110
    invoke-virtual {v5, v6, v9}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 111
    invoke-virtual {v0, v6, v9}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    goto :goto_34

    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_7a
    :goto_7a
    return v1
.end method

.method private static getKeyboardSimilarView(Landroid/view/View;)Z
    .registers 8

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_51

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 47
    sget v1, Lcom/sensorsdata/analytics/android/autotrack/R$id;->sensors_analytics_tag_view_keyboard:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    return v2

    .line 50
    :cond_18
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    .line 51
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_4c

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v1, :cond_3d

    if-eq p0, v4, :cond_3a

    .line 56
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "^([A-Za-z]|[0-9])"

    invoke-static {v6, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    const/4 v3, 0x1

    goto :goto_3d

    :cond_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_3d
    :goto_3d
    if-nez v3, :cond_44

    .line 62
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/autotrack/utils/KeyboardViewUtil;->getKeyboardSimilarFatherView(Landroid/view/View;)Z

    move-result p0

    return p0

    .line 64
    :cond_44
    sget p0, Lcom/sensorsdata/analytics/android/autotrack/R$id;->sensors_analytics_tag_view_keyboard:I

    const-string v1, "keyboard_tag"

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return v2

    .line 68
    :cond_4c
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/autotrack/utils/KeyboardViewUtil;->getKeyboardSimilarFatherView(Landroid/view/View;)Z

    move-result p0

    return p0

    .line 71
    :cond_51
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/utils/KeyboardViewUtil;->getKeyboardSimilarFatherView(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isKeyboardView(Landroid/view/View;)Z
    .registers 4

    .line 34
    sget-boolean v0, Lcom/sensorsdata/analytics/android/autotrack/utils/KeyboardViewUtil;->isSensorsCheckKeyboard:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    if-nez p0, :cond_8

    goto :goto_19

    .line 37
    :cond_8
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/util/SAViewUtils;->getViewContent(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "^([A-Za-z]|[0-9])"

    .line 38
    invoke-static {v2, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 39
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/autotrack/utils/KeyboardViewUtil;->getKeyboardSimilarView(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_19
    :goto_19
    return v1
.end method

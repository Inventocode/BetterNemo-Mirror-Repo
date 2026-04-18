.class public interface abstract annotation Lcn/codemao/android/account/annotation/CaptchaScene;
.super Ljava/lang/Object;
.source "CaptchaScene.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final COMMON:Ljava/lang/String; = "common"

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final REGISTER:Ljava/lang/String; = "register"

.field public static final RESET_PASSWORD:Ljava/lang/String; = "reset_password"

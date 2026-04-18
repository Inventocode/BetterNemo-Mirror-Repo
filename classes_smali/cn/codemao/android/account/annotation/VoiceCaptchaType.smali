.class public interface abstract annotation Lcn/codemao/android/account/annotation/VoiceCaptchaType;
.super Ljava/lang/Object;
.source "VoiceCaptchaType.java"

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
.field public static final BIND_PHONE:Ljava/lang/String; = "BIND_PHONE"

.field public static final COMMON:Ljava/lang/String; = "COMMON"

.field public static final LOGIN:Ljava/lang/String; = "LOGIN"

.field public static final LOGIN_WITH_REGISTER:Ljava/lang/String; = "LOGIN_WITH_REGISTER"

.field public static final REGISTER:Ljava/lang/String; = "REGISTER"

.field public static final RESET_PASSWORD:Ljava/lang/String; = "RESET_PASSWORD"

.field public static final THIRD_PARTY:Ljava/lang/String; = "THIRD_PARTY"

.field public static final UPDATE_BIND_PHONE:Ljava/lang/String; = "UPDATE_BIND_PHONE"

.field public static final UPDATE_PASSWORD:Ljava/lang/String; = "UPDATE_PASSWORD"

.field public static final UPDATE_USERNAME:Ljava/lang/String; = "UPDATE_USERNAME"

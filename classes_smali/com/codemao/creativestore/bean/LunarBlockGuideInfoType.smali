.class public interface abstract annotation Lcom/codemao/creativestore/bean/LunarBlockGuideInfoType;
.super Ljava/lang/Object;
.source "LunarBlockGuideInfoType.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final TYPE_TOOLBOX:Ljava/lang/String; = "toolbox"

.field public static final TYPE_TOOLBOX_BASE:Ljava/lang/String; = "toolbox_base"

.field public static final TYPE_WORKSPACE:Ljava/lang/String; = "workspace"

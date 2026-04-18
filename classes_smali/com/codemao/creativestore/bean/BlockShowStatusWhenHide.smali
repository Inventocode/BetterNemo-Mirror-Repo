.class public interface abstract annotation Lcom/codemao/creativestore/bean/BlockShowStatusWhenHide;
.super Ljava/lang/Object;
.source "BlockShowStatusWhenHide.java"

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
.field public static final LEVEL_HIDDEN:Ljava/lang/String; = "hidden"

.field public static final LEVEL_TRANSLUCENT:Ljava/lang/String; = "translucent"

.field public static final LEVEL_VISIBLE:Ljava/lang/String; = "visible"

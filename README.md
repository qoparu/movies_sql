# 🎬 Анализ фильмов и сериалов (IMDb/Kaggle)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![SQL](https://img.shields.io/badge/SQL-PostgreSQL%20|%20SQLite-blue)](https://www.postgresql.org/)
[![Data Visualization](https://img.shields.io/badge/Visualization-Matplotlib%20|%20Seaborn-orange)](https://matplotlib.org/)

Проект для анализа кинематографических данных с использованием SQL и визуализации результатов. Исследуем взаимосвязи между бюджетом, рейтингами, жанрами и актерским составом.

## 📌 Цели проекта
- Определить **топ-10 фильмов** по рейтингу
- Выявить **самые популярные жанры**
- Исследовать **корреляцию между бюджетом и рейтингом**
- Проанализировать **активность актеров** в различных фильмах
- Визуализировать **динамику выпуска фильмов** по годам

## 🗄 Структура базы данных
![ER-диаграмма](er_diagram.png)

**Описание таблиц**:
- `movies` - основная информация о фильмах
- `actors` - данные об актерах
- `genres` - жанровая классификация
- `ratings` - пользовательские рейтинги
- `movie_actors`, `movie_genres` - связи многие-ко-многим

## 🛠 Установка и запуск

### Предварительные требования
- PostgreSQL 12+ или SQLite3
- Python 3.8+ (для визуализации)
- Jupyter Notebook (опционально)

### Шаги установки
1. Клонируйте репозиторий:
```bash
git clone https://github.com/qoparu/movies_sql.git
cd movies_sql
